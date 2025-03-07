import antlr4 from 'antlr4';
import MyGrammarLexer from './star-rocks/StarRocksLexer.js';
import MyGrammarParser from './star-rocks/StarRocksParser.js';
import MyGrammarListener from './star-rocks/StarRocksListener.js';

const input = "Select * from Foo"
const chars = new antlr4.InputStream(input);
const lexer = new MyGrammarLexer(chars);
const tokens = new antlr4.CommonTokenStream(lexer);
const parser = new MyGrammarParser(tokens);
export const tree = parser.MyQuery();

export class Visitor {
    visitChildren(ctx) {
        if (!ctx) {
            return;
        }

        if (ctx.children) {
            return ctx.children.map(child => {
                if (child.children && child.children.length != 0) {
                    console.log(child.accept(this))
                    return child.accept(this);
                } else {
                    console.log(child.getText())
                    return child.getText();
                }
            });
        }
    }
}

