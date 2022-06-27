import Felgo 3.0
import QtQuick 2.0
import "logic"
import "model"

import "pages"


App
{
    Logic{
        id:logic
    }


    Connections
    {
        target:logic
        onFetchListCandidates:{
            _candidateListModel.getCandidate()
        }

    }


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


            NavigationStack
            {

                UserInfo{}
            }
        }

        NavigationItem
        {
            title:"Je vote"
            icon:IconType.anchor
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
