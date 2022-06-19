#include"candidateListModel.h"

int CandidateListModel::rowCount(const QModelIndex &parent) const{
    return parent.isValid() ? 0 : m_candidate.count();
}

QVariant CandidateListModel::data(const QModelIndex& index, int role) const
{
    if(!index.isValid())
        return QVariant();

    const Candidate& candidate = m_candidate.at(index.row());

    if(role == NameRole){
        return candidate.name_;
    }
    else
        return QVariant();
}

QHash<int, QByteArray> CandidateListModel::roleNames() const
{
    static QHash<int, QByteArray> mapping{
        {NameRole, "name"}
    };
    return mapping;
}
