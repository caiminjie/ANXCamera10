.class public Lcom/android/camera2/MiCamera2ShotLive;
.super Lcom/android/camera2/MiCamera2Shot;
.source "MiCamera2ShotLive.java"

# interfaces
.implements Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2Shot<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;",
        "Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/android/camera2/MiCamera2ShotLive;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera2/MiCamera2ShotLive;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2Shot;-><init>(Lcom/android/camera2/MiCamera2;)V

    .line 31
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/android/camera2/MiCamera2ShotLive;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera2/MiCamera2ShotLive;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    return-object p0
.end method


# virtual methods
.method protected generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 64
    new-instance v0, Lcom/android/camera2/MiCamera2ShotLive$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotLive$1;-><init>(Lcom/android/camera2/MiCamera2ShotLive;)V

    return-object v0
.end method

.method protected generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 119
    nop

    .line 121
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotLive;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 122
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotLive;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPhotoImageReader()Landroid/media/ImageReader;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 128
    sget-object v2, Lcom/android/camera2/MiCamera2ShotLive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "captureStillPicture: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotLive;->isInQcfaMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotLive;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotLive;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 137
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotLive;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 138
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotLive;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 142
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackPictureCapture(I)V

    .line 143
    return-object v0
.end method

.method protected notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 4

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 174
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotLive;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;

    move-result-object p1

    .line 175
    if-nez p1, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-interface {p1, v2}, Lcom/xiaomi/camera/core/ParallelCallback;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 180
    sget-object p1, Lcom/android/camera2/MiCamera2ShotLive;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mJpegCallbackFinishTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method protected bridge synthetic notifyResultData(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotLive;->notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    return-void
.end method

.method protected onImageReceived(Landroid/media/Image;I)V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 149
    sget-object v0, Lcom/android/camera2/MiCamera2ShotLive;->TAG:Ljava/lang/String;

    const-string v1, "onImageReceived: image arrived first"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotLive;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v1, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Util;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object v1

    .line 161
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 162
    sget-object p1, Lcom/android/camera2/MiCamera2ShotLive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImageReceived: dataLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    const-string v3, "null"

    goto :goto_0

    :cond_2
    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p1, v1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    .line 164
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isJpegDataReady()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 166
    const/4 p1, 0x1

    invoke-interface {v0, p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(Z)V

    .line 167
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotLive;->notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 169
    :cond_3
    return-void

    .line 155
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 156
    sget-object p1, Lcom/android/camera2/MiCamera2ShotLive;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImageReceived: illegal argument "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_5

    const-string v0, "callback"

    goto :goto_2

    :cond_5
    const-string v0, "taskdata"

    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public onVideoClipSavingCancelled()V
    .locals 3

    .line 201
    sget-object v0, Lcom/android/camera2/MiCamera2ShotLive;->TAG:Ljava/lang/String;

    const-string v1, "onVideoClipSavingCancelled: video = 0, timestamp = -1"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x0

    new-array v0, v0, [B

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera2/MiCamera2ShotLive;->onVideoClipSavingCompleted([BJ)V

    .line 203
    return-void
.end method

.method public onVideoClipSavingCompleted([BJ)V
    .locals 4
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 185
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotLive;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v1, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2ShotLive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoClipSavingCompleted: video = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1, p1, p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillMp4Data([BJ)V

    .line 192
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->isJpegDataReady()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 194
    if-eqz p1, :cond_1

    array-length p1, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(Z)V

    .line 195
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotLive;->notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 197
    :cond_2
    return-void

    .line 187
    :cond_3
    :goto_1
    return-void
.end method

.method public onVideoClipSavingException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 207
    sget-object p1, Lcom/android/camera2/MiCamera2ShotLive;->TAG:Ljava/lang/String;

    const-string v0, "onVideoClipSavingException: video = 0, timestamp = -1"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 p1, 0x0

    new-array p1, p1, [B

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera2/MiCamera2ShotLive;->onVideoClipSavingCompleted([BJ)V

    .line 209
    return-void
.end method

.method protected prepare()V
    .locals 0

    .line 36
    return-void
.end method

.method protected startSessionCapture()V
    .locals 4

    .line 41
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera2/MiCamera2ShotLive;->generateParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 42
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/android/camera2/MiCamera2ShotLive;->TAG:Ljava/lang/String;

    const-string v1, "startSessionCapture: null task data"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotLive;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotLive;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 50
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackPictureCapture(I)V

    .line 51
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotLive;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotLive;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    sget-object v1, Lcom/android/camera2/MiCamera2ShotLive;->TAG:Ljava/lang/String;

    const-string v2, "Cannot capture a still picture"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotLive;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2;->notifyOnError(I)V

    goto :goto_1

    .line 53
    :catch_1
    move-exception v0

    .line 54
    sget-object v1, Lcom/android/camera2/MiCamera2ShotLive;->TAG:Ljava/lang/String;

    const-string v2, "Cannot capture a still picture"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotLive;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera2/MiCamera2;->notifyOnError(I)V

    .line 59
    :goto_0
    nop

    .line 60
    :goto_1
    return-void
.end method
