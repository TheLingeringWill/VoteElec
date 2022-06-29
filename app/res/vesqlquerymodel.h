#ifndef VESQLQUERYMODEL_H
#define VESQLQUERYMODEL_H

#include<QSqlQueryModel>
#include<QDebug>
#include<QSqlRecord>
#include<QSqlError>
#include<QSqlQuery>

class VESqlQueryModel :  public QSqlQueryModel
{
    Q_OBJECT
    Q_DISABLE_COPY(VESqlQueryModel)
public:

    explicit VESqlQueryModel(QObject *parent = nullptr);

    ~VESqlQueryModel() = default;

    Q_INVOKABLE void getElection();
    Q_INVOKABLE void getCandidate(const QString& electionName);
    //Q_INVOKABLE void addParticipates
    Q_INVOKABLE bool isLogged(const QString& numElector, const QString& password);
    Q_INVOKABLE bool hasVoted(const QString& nameElection, const QString& numElector);
    Q_INVOKABLE void vote(const QString& numElector, int idCandidate, const QString& elctionName);
    Q_INVOKABLE void getParticipate(const QString& numElector);

    QVariant data(const QModelIndex &index, int role) const override;

    QHash<int, QByteArray> roleNames() const override{
        return m_roleNames;
    }

private:
    void generateRoleNames();
    QHash<int, QByteArray> m_roleNames;
    void setQuery(const QString &query);
};

inline void VESqlQueryModel::getElection()
{
    setQuery("SELECT * FROM Election");
}

inline void VESqlQueryModel::getCandidate(const QString& electionName)
{

    setQuery("SELECT p.first_name, p.last_name, c.program, c.candidate_id, c.picture, e.name "
             "FROM Candidate c "
             "JOIN Person p "
             "ON p.person_id=c.person_id "
             "JOIN Stands s "
             "ON s.candidate_id =c.candidate_id "
             "JOIN Election e "
             "ON e.election_id=s.election_id "
             "WHERE e.name='" + electionName + "' ");
}

inline bool VESqlQueryModel::isLogged(const QString& numElector, const QString& password)
{
    QSqlQueryModel::setQuery("SELECT EXISTS (SELECT * FROM Elector WHERE num_elector='" + numElector + "' AND password is '" + password + "' )");
    return record(0).value(0) == 1 ? true : false;
}

inline bool VESqlQueryModel::hasVoted(const QString& nameElection, const QString& numElector)
{
    QSqlQueryModel::setQuery("SELECT EXISTS (SELECT * FROM Participates p "
                             "JOIN Elector e "
                             "ON p.elector_id=e.elector_id "
                             "JOIN Election el "
                             "ON p.election_id=el.election_id "
                             "WHERE e.num_elector is '" + numElector + "' "
                             "AND el.name='" + nameElection + "')");
    return record(0).value(0) == 1 ? true : false;
}

inline void VESqlQueryModel::vote(const QString& numElector, int idCandidate, const QString& electionName)
{
    QSqlQuery query;
    query.prepare("INSERT INTO Participates "
                  "VALUES((SELECT elector_id FROM Elector WHERE num_elector =  + '" + numElector + "'), "
                  +idCandidate + ", "
                  "(SELECT election_id FROM Election WHERE name='" + electionName + "')"
                  ")");

    QSqlQueryModel::setQuery("SELECT elector_id FROM Elector WHERE num_elector =  + '" + numElector + "' ");

    int elector_id = record(0).value(0).toInt();
    qDebug() << elector_id;

    QSqlQueryModel::setQuery("SELECT election_id FROM Election WHERE name='" + electionName + "' ");

    int election_id = record(0).value(0).toInt();
    qDebug() << idCandidate;
    qDebug() << election_id;

    query.prepare("INSERT INTO Participates (elector_id, candidate_id, election_id) VALUES(:elector_id, :candidate_id, :election_id)");

    query.bindValue(":elector_id", elector_id);
    query.bindValue(":candidate_id", idCandidate);
    query.bindValue(":election_id", election_id);
    query.exec();




    /*"INSERT INTO Participates "
                             "VALUES((SELECT elector_id FROM Elector WHERE num_elector =  + '" + numElector + "'), "
                             +idCandidate + ", "
                             "(SELECT election_id FROM Election WHERE name='" + electionName + "')"
                             ")"
                             );*/
    qDebug() << query.lastError();
}

inline void VESqlQueryModel::getParticipate(const QString& numElector)
{
    QSqlQueryModel::setQuery("SELECT e.name, e.start_date, p.first_name, p.last_name "
                             "FROM Participates par "
                             "JOIN Elector el "
                             "ON el.elector_id = par.elector_id "
                             "JOIN Election e "
                             "ON e.election_id = par.election_id "
                             "JOIN Candidate c "
                             "ON c.candidate_id = par.candidate_id "
                             "JOIN Person p "
                             "ON c.person_id = p.person_id "
                             "WHERE el.num_elector = '" + numElector +"'");
    generateRoleNames();
    qDebug() << lastError();
}


inline void VESqlQueryModel::setQuery(const QString & query)
{

   QSqlQueryModel::setQuery(query);
   generateRoleNames();

}

inline QVariant VESqlQueryModel::data(const QModelIndex &index, int role) const
{

    return role < Qt::UserRole ?
                QSqlQueryModel::data(index,role) :
                QSqlQueryModel::data(this->index(index.row(), role-Qt::UserRole - 1),Qt::DisplayRole);

}

#endif // VESQLQUERYMODEL_H
