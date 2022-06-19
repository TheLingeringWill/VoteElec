#include "electionlistmodel.h"

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
