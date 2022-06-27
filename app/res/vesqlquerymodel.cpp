#include "vesqlquerymodel.h"

#include <QSqlRecord>
#include <QSqlField>
#include <QDebug>
#include <QSqlError>

VESqlQueryModel::VESqlQueryModel(QObject *parent) :
    QSqlQueryModel{parent}
{
}

void VESqlQueryModel::generateRoleNames()
{
   m_roleNames.clear();
   for( int i = 0; i < record().count(); ++i ) {
       m_roleNames.insert(Qt::UserRole + i + 1, record().fieldName(i).toUtf8());
   }

   for(int i =0; i < rowCount(); ++i)
   {
       qDebug() << record(i).value(2 ).toString();
   }

}




