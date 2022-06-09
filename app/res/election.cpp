#include "election.h"



QString Election::name() const
{
    return name_;
}

void Election::setName(const QString &name)
{
    name_ = name;
}

QString Election::description() const
{
    return description_;
}

void Election::setDescription(const QString &description)
{
    description_ = description;
}

QDate Election::date() const
{
    return date_;
}

void Election::setDate(const QDate &date)
{
    date_ = date;
}
