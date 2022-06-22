#include "electionlistmodel.h"

/*
int ElectionListModel::rowCount(const QModelIndex& parent) const{
    return parent.isValid() ? 0 : m_elections.count();
}

QVariant ElectionListModel::data( const QModelIndex& index, int role ) const
{
    if( !index.isValid())
        return QVariant();

    const Election& election = m_elections.at(index.row());

    switch(role)
    {
        case NameRole:
                return election.m_name;
        case DescriptionRole:
                return election.m_description;
        case DateRole:
                return election.m_date.toString(Qt::ISODate);
    }

    return QVariant();

}
QHash<int, QByteArray> ElectionListModel::roleNames() const
{
    static QHash<int, QByteArray> mapping
    {
        {NameRole, "name"},
        {DescriptionRole,"description"},
        {DateRole,"date"}
    };
    return mapping;
}
*/


#include <QSqlRecord>
#include <QSqlField>

void ElectionListModel::setQuery(const QString& query, const QSqlDatabase& db)
{
    QSqlQueryModel::setQuery(query, db);
    generateRoleNames();

}

void ElectionListModel::setQuery(const QSqlQuery & query) {

   QSqlQueryModel::setQuery(query);
   generateRoleNames();

}

void ElectionListModel::generateRoleNames() {

   m_roleNames.clear();
   for( int i = 0; i < record().count(); i ++) {
       m_roleNames.insert(Qt::UserRole + i + 1, record().fieldName(i).toUtf8());
   }

}

QVariant ElectionListModel::data(const QModelIndex &index, int role) const
{
    QVariant value;

    if(role < Qt::UserRole) {
        value = QSqlQueryModel::data(index, role);
    }
    else {
        int columnIdx = role - Qt::UserRole - 1;
        QModelIndex modelIndex = this->index(index.row(), columnIdx);
        value = QSqlQueryModel::data(modelIndex, Qt::DisplayRole);
    }
    return value;

}
