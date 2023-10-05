# Foundations Assessment 2 Practice - ConnectTacToe

**Do not share this repo or post any parts of it publicly. App Academy will take
violations very seriously.**

In this assessment, you will build a variation of Connect Four called
`ConnectTacToe`. In classic [Connect Four][connect-four-wiki], two players of
different color tokens take turns dropping their tokens into an upright board.
Tokens fall to the bottom of the board or sit on top of another token due to
gravity.

**The version of the game that you will be building--ConnectTacToe--will allow
for a board of any dimensions, as long as both dimensions are at least 4. To
win, a player must completely fill a row or column with their tokens (i.e., not
simply get four in a row). Diagonal streaks are not considered.**

## Tip

You will represent the board with a 2D array. This means that the subarray at
index 2 of the outer array would correspond to the third "column" from the left
in the "real-world" game. In other words, this "real-world" visualization of the
board:

```plaintext
    b
b   y
y   y
y b b     y
- - - - - - -
```

would be represented as:

```rb
[
  ['y', 'y', 'b'],
  ['b'],
  ['b', 'y', 'y', 'b'],
  [],
  [],
  ['y'],
  []
]
```

Note how the axis of the game is "flipped". For clarity, the project will refer
to each inner subarray as a `stack`. This means that gameplay will always add a
token to the top of a `stack`.

## Usage

1. `cd` into the project root directory.
2. `bundle install` to install dependencies.
3. `bundle exec rspec` to run all tests.
   * To run one specific spec, add `:<line_number>` at the end. For example:  
     `bundle exec rspec spec/board_spec.rb:7`

## Objective

Your objective is to pass all 35 test specs by writing code in the __lib/__
files. You can view the test cases in __spec/__.

```bash
connect_tac_toe
├── .rspec
├── Gemfile
├── Gemfile.lock
├── README.md
├── lib
│   ├── board.rb
│   ├── connect_tac_toe.rb
│   ├── play_connect_tac_toe.rb
│   └── player.rb
└── spec
    ├── board_spec.rb
    ├── connect_tac_toe_spec.rb
    └── player_spec.rb
```

Note that there may be some initial code provided in some of the __lib/__ files.
Once you pass all specs, you can run `ruby lib/play_connect_tac_toe.rb` to play
your final product.

It is recommended that you implement the code in the following order: `Board`,
`Player`, `ConnectTacToe`.

[connect-four-wiki]: https://en.wikipedia.org/wiki/Connect_Four

## Passing Score

The passing score for this assessment is 29/35 specs.
The allotted time for this assessment is 45 minutes.

## Submission (only needed for actual assessments)

* Save your files.
* Rename the directory `firstname_lastname` using your actual name.
* ZIP it.
  * On Macs, right-click the folder and select 'Compress'.
  * Use the __.zip__ format; no boutique formats please! :-)
* Upload to Progress Tracker ([https://progress.appacademy.io/]).

[https://progress.appacademy.io/]: https://progress.appacademy.io/

Good luck!

**Copyright App Academy. Please do not post online.**
