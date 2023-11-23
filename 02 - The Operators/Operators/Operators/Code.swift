//
//  Code.swift
//  Operators
//
//  Created by Vincent on 03/08/2023.
//

import Foundation
import Combine

var cancellables = Set<AnyCancellable>()

func run() {
    print("Starting")
//    let evenIntegersPublisher = [2, 4, 8, 10].publisher
//    
//    let oddIntegersPublisher = [1, 3, 5, 7, 9].publisher

//    Publishers.CombineLatest( /// All Publishers has to emit at least one value
//        evenIntegersPublisher, /// Combines the latest events
//        oddIntegersPublisher
//    )
//    .sink { even, odd in
//        print("latest even: \(even), latest odd: \(odd)")
//    }
//    .store(in: &cancellables)
//    
//    Publishers.Zip( /// Both publishers has to emit the same amount of events
//        evenIntegersPublisher,
//        oddIntegersPublisher
//    )
//    .sink { even, odd in
//        print("zip even: \(even), odd: \(odd)")
//    }
//    .store(in: &cancellables)
//    
//    Publishers.Merge( /// Publishers has to emit same type of values
//        evenIntegersPublisher.delay(for: 1, scheduler: DispatchQueue.main),
//        oddIntegersPublisher
//    )
//    .sink { integer in
//        print("Merge integer: \(integer)")
//    }
//    .store(in: &cancellables)
    
//    let randomNumberPublisher = Timer.publish(every: 1, on: .main, in: .default)
//        .autoconnect()
//        .map { _ in
//            Int.random(in: 0..<100)
//        }
//        .share() /// Otherwise the published receipie would emit different value for each `sink`
    
//    randomNumberPublisher
//        .sink { randomValue in /// the `sink` is the one responsible for creating / launching the publisher
//            print("Random value A: \(randomValue)")
//        }
//        .store(in: &cancellables)
//    
//    randomNumberPublisher
//        .sink { randomValue in
//            print("Random value B: \(randomValue)")
//        }
//        .store(in: &cancellables)
    
    
    
    /// ***********************  how to wrape legacy cmpletion handlers inside a publisher *************************
//    func legacyAsyncStuff( _ completionHandler: @escaping (Int) -> Void) {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//            completionHandler(Int.random(in: 1..<100))
//        }
//    }
//    
//    /// By default the result of `Future` is cached
//    let legacyAsyncStuffPublisher = Future<_, Never> { promise in
//        legacyAsyncStuff { number in
//            promise(.success(number))
//        }
//    }
    
//    /// Deffered creates a new `Future` every time
//    let legacyAsyncStuffDefferedPublisher = Deferred {
//        Future<_, Never> { promise in
//            legacyAsyncStuff { number in
//                promise(.success(number))
//            }
//        }
//    }
//    
//    legacyAsyncStuffDefferedPublisher
//        .sink { number in
//            print("legacyAsyncStuff result A: \(number)")
//        }
//        .store(in: &cancellables)
//    
//    legacyAsyncStuffDefferedPublisher
//        .sink { number in
//            print("legacyAsyncStuff result B: \(number)")
//        }
//        .store(in: &cancellables)
    
//    func repeatedLegacyAsyncStuff(_ handler: @escaping (Int) -> Void) {
//        for i in 1...10 {
//            DispatchQueue.main.asyncAfter(deadline: .now() + (3 * Double(i))) {
//                handler(Int.random(in: 1..<100))
//            }
//        }
//    }
//    
//    class Wrapper {
////        private let subject = PassthroughSubject<Int, Never>()
//        private let subject = CurrentValueSubject<Int, Never>(-1) /// BehaviorRelay
//        
//        var publisher: some Publisher<Int, Never> {
//            subject.eraseToAnyPublisher()
//        }
//        
//        init() {
//            repeatedLegacyAsyncStuff { [subject] number in
//                subject.send(number)
//            }
//        }
//    }
//    
//    Wrapper()
//        .publisher
//        .sink { value in
//            print("wrapper: \(value)")
//        }
//        .store(in: &cancellables)
    
    /// **********************************************************************
    
    
}
