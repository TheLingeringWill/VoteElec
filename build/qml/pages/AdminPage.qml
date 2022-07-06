import QtQuick 2.0
import Felgo 3.0
import QtCharts 2.3

Page
{
    id: adminPage
    ChartView
    {
        title: "Winners in live"
        anchors.fill: parent
        legend.alignment: Qt.AlignBottom
        antialiasing: true

        BarSeries {
            id: mySeries
            axisX: BarCategoryAxis{categories : _chartWinner.listElection}
            axisY: ValueAxis{
                min:0
                max:10
            }

            Component.onCompleted: mySeries.updateBarSeries()

            function updateBarSeries()
            {
                mySeries.clear()
                var lc = _chartWinner.listCandidate
                for(var index in lc)
                    mySeries.append(index,lc[index])
            }

        }
    }

}
