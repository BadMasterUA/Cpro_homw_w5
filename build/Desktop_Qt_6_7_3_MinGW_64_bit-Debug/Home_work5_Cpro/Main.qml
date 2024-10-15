import QtQuick 2.5
import QtQuick.Controls 2.5

//класс с методом addOne
import M_Counter 1.0

Window {
    width: 320
    height: 240
    visible: true
    title: qsTr("Click counter")

    //подключаем класс
    Counter
    {
        id: counter
    }

    //UI
    Column
    {
        anchors.centerIn: parent
        spacing: 10

        //текст
        Text
        {
            text: "Кол-во кликов: " + counter.count
            font.pointSize: 10
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        //кнопка
        Button
        {
            text: "Нажми меня!!!"
            onClicked:
            {
                counter.addOne()

                console.log('button cklik')
            }
        }
    }
}
