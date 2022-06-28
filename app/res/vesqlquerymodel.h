#ifndef VESQLQUERYMODEL_H
#define VESQLQUERYMODEL_H

#include<QSqlQueryModel>
#include<QDebug>
#include<QSqlRecord>

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
    Q_INVOKABLE void vote(const QString& numElector, const QString& candidateName, const QString& elctionName);

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

    setQuery("SELECT p.first_name, p.last_name, c.program, c.picture, e.name "
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
