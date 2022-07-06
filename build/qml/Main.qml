
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
            icon:IconType.home
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
            title:"Mon compte"
            icon:IconType.cogs

            onSelected: logic.fetchUserInfo()

            NavigationStack
            {

                UserInfo{}
            }
        }

        NavigationItem
        {
            title:"Je vote"
            icon:IconType.inbox
            visible: false

            NavigationStack
            {
                id:navVote
                ListVotes
                {

                }

                Component
                {
                    id:navSubmitVote

                    SubmitVote{

                        id:sv
                        property string name: "cjk"
                    }                }




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
            icon:IconType.arrowcircleoleft

            NavigationStack
            {

            }
        }

        NavigationItem
        {
            title:"Admin"
            NavigationStack
            {
                AdminPage{

                }
            }
        }
    }






}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
