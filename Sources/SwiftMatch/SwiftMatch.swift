infix operator =>

struct MatchArm<T: Equatable, R> {
    let matchValue: T
    let run: () -> R
}

@_functionBuilder
struct MatchBlock<T: Equatable, R> {
    func buildBlock(_ cases: MatchArm<T, R>...) -> [MatchArm<T, R>] {
        return Array(cases)
    }
}

func =><T: Equatable, R>(left: T, right: @escaping () -> R) -> MatchArm<T, R> {
    MatchArm(matchValue: left, run: right)
}

func match<T: Equatable, R>(_ value: T, @MatchBlock<T, R> arms: () -> [MatchArm<T, R>]) -> R {
    let matchArms = arms()
    for matchArm in matchArms {
        if matchArm.matchValue == value {
            return matchArm.run()
        }
    }
    fatalError("No default case")
}
