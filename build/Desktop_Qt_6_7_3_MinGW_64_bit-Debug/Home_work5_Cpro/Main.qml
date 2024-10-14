import QtQuick 2.5
import QtQuick.Controls 2.5

//класс с методом addOne
import M_AddOneClick

Window {
    width: 320
    height: 240
    visible: true
    title: qsTr("Click counter")

    //подключаем класс
    AddOne
    {
        id: myClassInstanse
    }

    //UI
    Column
    {
        anchors.centerIn: parent
        spacing: 10

        //лейбл с текстом
        Label
        {
            id: textLabel
            text: "Количесвто кликов: 0"
        }

        //кнопка
        Button
        {
            text: "Нажми меня!!!"
            onClicked:
            {
                //переменная с вызовом метода
                textLabel.text = "Количесвто кликов: " + myClassInstanse.add();
                console.log('button cklik')
            }
        }
    }
}
