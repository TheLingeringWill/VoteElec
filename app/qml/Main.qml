import Felgo 3.0
import QtQuick 2.0
import QtQuick.Dialogs 1.2

import "logic"
import "model"

import "pages"


App
{
    Logic{
        id:logic
    }



    DataModel
    {
        id:dataModel
        dispatcher: logic
    }




    Navigation
    {
        id:navigation
        navigationMode: dataModel.userLoggedIn ? navigationModeDrawer : navigationModeNone
        drawerFixed : false

        NavigationItem
        {
            title: "Page d'accueil"
            icon:IconType.cogs
            id:mainHome
            NavigationStack
            {

                MainPage{

                }

                Component{
                        id:loginPage
                    Login{

                    }
                }

                Component{
                    id:create_account_component
                    CreateAccount{

                    }
                }

            }

        }


        NavigationItem
        {
            title:"Mon compte électeur"
            icon:IconType.cogs


            NavigationStack
            {

                UserInfo{}
            }
        }

        NavigationItem
        {
            title:"Je vote"
            icon:IconType.anchor
            visible: false

            NavigationStack
            {

                ListVotes
                {

                }

                Component
                {
                    id:navSubmitVote


                    SubmitVote{
                        id:sv

                    }
                }


                Item
                {
                    id:navCandidateProgram

                    CandidateProgram{
                        id:cp
                    }
                }




            }
        }

        NavigationItem
        {
            title:"Me déconnecter"
            icon:IconType.anchor

            NavigationStack
            {

            }
        }
    }




}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
