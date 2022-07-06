#ifndef CHARTWINNER_H
#define CHARTWINNER_H

#include <QObject>
#include <QDebugStateSaver>

class chartWinner : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QStringList listElection READ listElection)
    Q_PROPERTY(QVariantMap listCandidate READ listCandidate)

public:
    explicit chartWinner(QStringList&& listElection,
                         QVariantMap&& listCandidate,
                         QObject *parent = nullptr):
        QObject{parent},
        listElection_{std::move(listElection)},
        listCandidate_{std::move(listCandidate)}
    {

    }


    const QStringList& listElection(){
        return listElection_;
    }

    const QVariantMap& listCandidate(){
        return listCandidate_;
    }


    friend QDebug operator<<(QDebug debug, const chartWinner& c)
    {
        QDebugStateSaver saver(debug);
        debug.nospace() << c.listElection_ << '\n' << c.listCandidate_;
        return debug;
    }


private:
    const QStringList& listElection_;
    const QVariantMap& listCandidate_;


signals:

};

#endif // CHARTWINNER_H
