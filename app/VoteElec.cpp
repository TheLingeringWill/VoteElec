#include <QApplication>
#include <FelgoApplication>

#include <QQmlApplicationEngine>
#include <QQmlContext>

// uncomment this line to add the Live Client Module and use live reloading with your custom C++ code
#include <FelgoLiveClient>


#include"res/vesqlquerymodel.h"
#include<QSqlError>
#include"res/fileio.h"

#include<QByteArray>

int main(int argc, char *argv[])
{

    QApplication app(argc, argv);

    FelgoApplication felgo;

    // Use platform-specific fonts instead of Felgo's default font
    felgo.setPreservePlatformFonts(true);

    QQmlApplicationEngine engine;
    felgo.initialize(&engine);

    // Set an optional license key from project file
    // This does not work if using Felgo Live, only for Felgo Cloud Builds and local builds
    felgo.setLicenseKey(PRODUCT_LICENSE_KEY);

    // use this during development
    // for PUBLISHING, use the entry point below
    felgo.setMainQmlFileName(QStringLiteral("qml/Main.qml"));

    if(QSqlDatabase::isDriverAvailable("QSQLITE"))
    {
        QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
        db.setDatabaseName("../VoteElec.db");

        if(!db.open()){
            qWarning() << "Error connectiong Database : " << db.lastError();
        }
    }


    VESqlQueryModel *electionListModel = new VESqlQueryModel(),
                    *candidateListModel = new VESqlQueryModel(),
                    *userInfoModel = new VESqlQueryModel();


    electionListModel->getElection();



    engine.rootContext()->setContextProperty("_electionListModel",electionListModel);
    engine.rootContext()->setContextProperty("_candidateListModel",candidateListModel);
    engine.rootContext()->setContextProperty("_userInfoModel",userInfoModel);

    qmlRegisterType<FileIO, 1>("FileIO", 1, 0, "FileIO");




    // use this instead of the above call to avoid deployment of the qml files and compile them into the binary with qt's resource system qrc
    // this is the preferred deployment option for publishing games to the app stores, because then your qml files and js files are protected
    // to avoid deployment of your qml files and images, also comment the DEPLOYMENTFOLDERS command in the .pro file
    // also see the .pro file for more details
    //felgo.setMainQmlFileName(QStringLiteral("qrc:/qml/Main.qml"));



    //engine.load(QUrl(felgo.mainQmlFileName()));

    // to start your project as Live Client, comment (remove) the lines "felgo.setMainQmlFileName ..." & "engine.load ...",
    // and uncomment the line below
    FelgoLiveClient client (&engine);

    return app.exec();
}


/*
#include"res/elector.h"
#include"res/candidate.h"
#include<iostream>
int main(int argc, char *argv[])
{

    Adresse adresse{3,"fdj","fdjk","lecvallois"};
    Person person{"elbaz","lfd","fdk",MAN,{1995,5,17},adresse};
    std::cout << person <<std::endl;

    Elector elector{"dfk","dfkj","fdjk","fkd","fkdj",MAN,{1995,4,9},adresse};

    std::cout<< (const Candidate&)(elector) << std::endl;


}
*/


#include<QtSql>
#include<QSqlDatabase>
#include<QSqlQuery>
/*
int main()
{




}
*/
