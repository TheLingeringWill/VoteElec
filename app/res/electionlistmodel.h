#ifndef ELECTIONLISTMODEL_H
#define ELECTIONLISTMODEL_H

#include<QAbstractListModel>
#include<QDate>


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
        m_elections<<Election("fjdksa","dfjk",{3,10,2001});


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

#endif // ELECTIONLISTMODEL_H
