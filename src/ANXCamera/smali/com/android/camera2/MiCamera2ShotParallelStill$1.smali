.class Lcom/android/camera2/MiCamera2ShotParallelStill$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2ShotParallelStill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotParallelStill;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCaptureTimestamp:J

.field final synthetic this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;


# direct methods
.method constructor <init>(Lcom/android/camera2/MiCamera2ShotParallelStill;)V
    .locals 2

    .line 87
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->mCaptureTimestamp:J

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    const-string p1, "ShotParallelStill"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureCompleted: frameNumber="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(Z)V

    .line 120
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$102(Lcom/android/camera2/MiCamera2ShotParallelStill;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    .line 121
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$100(Lcom/android/camera2/MiCamera2ShotParallelStill;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    .line 122
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    .line 123
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureFailure;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 130
    const-string p1, "ShotParallelStill"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureFailed: reason="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(Z)V

    .line 132
    iget-wide p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->mCaptureTimestamp:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 133
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->mCaptureTimestamp:J

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureFailed(JI)V

    .line 135
    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 3
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 95
    const-string v0, "ShotParallelStill"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 97
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    .line 98
    if-eqz p1, :cond_0

    .line 99
    new-instance p2, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object p5, p5, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 100
    invoke-virtual {p5}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result p5

    iget-object p6, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object p6, p6, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 101
    invoke-virtual {p6}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p2, p3, p4, p5, p6}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(JILjava/lang/String;)V

    .line 102
    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object p5, p5, Lcom/android/camera2/MiCamera2ShotParallelStill;->mCapturedImageSize:Lcom/android/camera/CameraSize;

    invoke-interface {p1, p2, p5}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/CameraSize;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$000(Lcom/android/camera2/MiCamera2ShotParallelStill;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    .line 106
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 107
    iput-wide p3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->mCaptureTimestamp:J

    .line 108
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 111
    :cond_0
    return-void
.end method
