infix operator =>

struct MatchCase<T: Equatable, R> {
    let matchValue: T
    let run: () -> R
}

@_functionBuilder
struct MatchBlock<T: Equatable, R> {
    func buildBlock(_ cases: MatchCase<T, R>...) -> [MatchCase<T, R>] {
        return Array(cases)
    }
}

func =><T: Equatable, R>(left: T, right: @escaping () -> R) -> MatchCase<T, R> {
    MatchCase(matchValue: left, run: right)
}

func match<T: Equatable, R>(_ value: T, @MatchBlock<T, R> cases: () -> [MatchCase<T, R>]) -> R {
    let matchCases = cases()
    for matchCase in matchCases {
        if matchCase.matchValue == value {
            return matchCase.run()
        }
    }
    fatalError("No default case")
}
