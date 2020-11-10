/*
 * Copyright (c) 2020 Meltytech, LLC
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.5
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.1

CheckBox {
    SystemPalette { id: activePalette }

    style: CheckBoxStyle {
        background: Rectangle {
            implicitWidth: menu.width
            implicitHeight: menu.itemHeight
            color: control.hovered? activePalette.highlight : 'transparent'
        }
        label: Label {
            x: 6
            Layout.alignment: Qt.AlignLeft
            text: control.text
            color: control.hovered? activePalette.highlightedText : activePalette.text
        }
        indicator: CheckBox {
            x: 8
            visible: false
        }
    }
}
