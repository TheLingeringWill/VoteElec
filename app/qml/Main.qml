import Felgo 3.0
import QtQuick 2.0
import "pages"

App
{   /*
    Navigation
    {
        id:navigation
        navigationMode: navigationModeDrawer
        drawerFixed : false



        NavigationItem
        {
            title: "Page d'accueil"
            icon:IconType.cogs
            NavigationStack
            {

                MainPage{

                }

            }

        }


        NavigationItem
        {
            title:"Mon compte électeur"
            icon:IconType.cogs
            Component.onCompleted: _electionListModel.setQuery("SELECT * FROM Election")

            NavigationStack
            {

            }
        }

        NavigationItem
        {
            title:"Je vote"
            icon:IconType.anchor
            NavigationStack
            {

                ListVotes{

                }

                Component
                {
                    id:navSubmitVote
                    SubmitVote{

                    }
                }

                Component
                {
                    id:navCandidateProgram
                    CandidateProgram{

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
    */
    Navigation{
        NavigationItem{
            Component.onCompleted: _electionListModel.setQuery("SELECT * FROM Election")
            UserInfo{}

        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
