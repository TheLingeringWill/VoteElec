#ifndef VESQLQUERYMODEL_H
#define VESQLQUERYMODEL_H

#include<QSqlQueryModel>
#include<QDebug>

class VESqlQueryModel :  public QSqlQueryModel
{
    Q_OBJECT
    Q_DISABLE_COPY(VESqlQueryModel)
public:

    explicit VESqlQueryModel(QObject *parent = nullptr);

    ~VESqlQueryModel() = default;

    Q_INVOKABLE void setQuery(const QString &query);

    QVariant data(const QModelIndex &index, int role) const override;

    QHash<int, QByteArray> roleNames() const override{
        return m_roleNames;
    }

private:
    void generateRoleNames();
    QHash<int, QByteArray> m_roleNames;
};

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
