#ifndef ELECTIONLISTMODEL_H
#define ELECTIONLISTMODEL_H

#include<QAbstractListModel>
#include<QDate>

/*
struct Election
{
    Election(const QString& name,
                      const QString& description,
                      const QDate& date):
        m_name{name},
        m_description{description},
        m_date{date}
    {

    }

    QString m_name;
    QString m_description;
    QDate m_date;

};


class ElectionListModel : public QAbstractListModel
{
    Q_OBJECT

public:

    explicit ElectionListModel(QObject* parent = nullptr):
        QAbstractListModel{parent}
    {
        m_elections<<Election("fjdksa","dfjk",{2001,3,10})
                   << Election("fjdksfdksja","dfjk",{2001,3,10})
                   <<Election("fjcsa","dfjk",{2001,3,10})
                  <<Election("fjdksa","dfjk",{2001,3,10})
                <<Election("fjdfdsaksa","dfjk",{2001,3,10})
               <<Election("fjfasfddksa","dfjk",{2001,3,10})
              <<Election("fjdksfaa","dfjk",{2001,3,10});


    }

    enum Roles
    {
        NameRole = Qt::UserRole,
        DescriptionRole,
        DateRole
    };

    int rowCount(const QModelIndex& parent) const override;
    QVariant data( const QModelIndex& index, int role = Qt::DisplayRole ) const override;
    QHash<int, QByteArray> roleNames() const override;

private:
    QVector<Election> m_elections;


};
*/

#include<QSqlQueryModel>

/*
class ElectionSqlModel : public QSqlQueryModel
{
    Q_OBJECT

public:
    explicit ElectionSqlModel(QObject *parent)
};
*/


class ElectionListModel : public QSqlQueryModel
{
    Q_OBJECT

public:

    explicit ElectionListModel(QObject* parent = nullptr):
        QSqlQueryModel{parent}
    {



    }

    enum Roles
    {
        NameRole = Qt::UserRole,
        DescriptionRole,
        DateRole
    };

    void setQuery(const QString &query, const QSqlDatabase &db = QSqlDatabase());
   void setQuery(const QSqlQuery &query);
   QVariant data(const QModelIndex &index, int role) const;
   QHash<int, QByteArray> roleNames() const {	return m_roleNames;	}
   QHash<int, QByteArray> m_roleNames;
private:
   void generateRoleNames();








};



#endif // ELECTIONLISTMODEL_H
