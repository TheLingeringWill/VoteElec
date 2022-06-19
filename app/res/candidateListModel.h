#ifndef CANDIDATE_LIST_MODEL_H
#define CANDIDATE_LIST_MODEL_H

#include <QAbstractListModel>

struct Candidate
{
    Candidate(const QString& name):
        name_{name}
    {

    }

    QString name_;
};

class CandidateListModel : public QAbstractListModel
{
    Q_OBJECT

public:

    enum Roles
    {
        NameRole = Qt::UserRole
    };

    explicit CandidateListModel(QObject *parent = nullptr) :
        QAbstractListModel{parent}
    {
        m_candidate << Candidate("coucou")
                    << Candidate("fjaksd;jf")
                    << Candidate("blbl")
                    << Candidate("fkjajdf")
                    << Candidate("fjdkajfk");

    }

    int rowCount(const QModelIndex& parent) const override;
    QVariant data( const QModelIndex& index, int role = Qt::DisplayRole ) const override;
    QHash<int, QByteArray> roleNames() const override;



private:
    QVector<Candidate> m_candidate;

};

#endif // CANDIDATELISTMODEL_H
