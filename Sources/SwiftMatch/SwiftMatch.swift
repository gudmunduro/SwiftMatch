infix operator =>

struct MatchCase<T, R> {
    let matchValue: T
    let run: () -> R
}

@_functionBuilder
struct MatchBlock<T: Equatable, R> {
    private let compareTo: T

    func buildBlock(_ cases: MatchCase<T, R>...) -> [MatchCase<T, R>] {
        return Array(cases)
    }
}

func =><T, R>(left: T, right: @escaping () -> R) -> MatchCase<T, R> {
    MatchCase(matchValue: left, run: right)
}

func match<T: Equatable, R>(_ value: T, @MatchBlock<T, R> cases: () -> [MatchCase<T, R>]) -> R {
    let matchCases = cases()
    for matchCase in matchCases {
        if matchCase.matchValue == value {
            return matchCase.run()
        }
    }
}
