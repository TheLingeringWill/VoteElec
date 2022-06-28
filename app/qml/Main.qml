import Felgo 3.0
import QtQuick 2.0
import "views"

App {
    Navigation{
        id : nav
        navigationMode: navigationDrawerItem
        drawerFixed: false
        NavigationItem{
            NavigationStack{
                Login{

                }

                Component{
                    id : create_account_component
                    Create_account{

                    }

                }


                /*Popup{

                }*/

            }


        }
    }

}
