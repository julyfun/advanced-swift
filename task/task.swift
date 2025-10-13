import Foundation

let task = Task {
    do {
        try await Task.sleep(nanoseconds: 5_000_000_000)
        print("任务完成")
    } catch is CancellationError {
        print("任务被取消")
    }
}

// 3秒后取消任务
Task {
    try await Task.sleep(nanoseconds: 3_000_000_000)
    task.cancel()
}

// 保持程序运行6秒
RunLoop.main.run(until: Date().addingTimeInterval(6))

