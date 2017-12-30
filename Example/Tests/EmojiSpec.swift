//
//  EmojiSpec.swift
//  RCEmojiKit_Example
//
//  Created by Matheus Cardoso on 12/29/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import RCEmojiKit

class EmojiSpec: QuickSpec {
    override func spec() {
        describe("emoji shortname to unicode transformation") {
            it("works") {
                expect(Emoji.transform("Hello world! 😄 :smile:")) == "Hello world! 😄 😄"
            }

            it("works with shortname at start of sentence with apostrophe") {
                expect(Emoji.transform(":snail:'s are cool!")) == "🐌's are cool!"
            }

            it("works when shortname shares a colon") {
                expect(Emoji.transform(":invalid:snail:")) == ":invalid🐌"
            }

            it("works with mixed ascii, regular unicode and duplicate emoji") {
                expect(Emoji.transform(":alien: is 👽 and 저 is not :alien: or :alien: also :randomy: is not emoji")) == "👽 is 👽 and 저 is not 👽 or 👽 also :randomy: is not emoji"
            }

            it("works with multiline emoji string") {
                expect(Emoji.transform(":dancer:\n:dancer:")) == "💃\n💃"
            }

            it("works with triple emoji string") {
                expect(Emoji.transform(":dancer::dancer::alien:")) == "💃💃👽"
            }
        }
    }
}
