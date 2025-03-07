import antlr4 from 'antlr4';
import MyGrammarLexer from './lib/StarRocksLexer.js';
import MyGrammarParser from './lib/StarRocksParser.js';
import MyGrammarListener from './lib/StarRocksListener.js';

const input = "Select * from Foo"
const chars = new antlr4.InputStream(input);
const lexer = new MyGrammarLexer(chars);
const tokens = new antlr4.CommonTokenStream(lexer);
const parser = new MyGrammarParser(tokens);
const tree = parser.MyQuery();

class Visitor {
    visitChildren(ctx) {
        if (!ctx) {
            return;
        }

        if (ctx.children) {
            return ctx.children.map(child => {
                if (child.children && child.children.length != 0) {
                    return child.accept(this);
                } else {
                    return child.getText();
                }
            });
        }
    }
}

tree.accept(new Visitor());
