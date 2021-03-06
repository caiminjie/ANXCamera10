.class public Lcom/android/camera/module/loader/camera2/Camera2DataContainer;
.super Ljava/lang/Object;
.source "Camera2DataContainer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final BOGUS_CAMERA_ID_BACK:I = 0x0

.field public static final BOGUS_CAMERA_ID_FRONT:I = 0x1

.field private static final INDEX_AUX:I = 0x1

.field private static final INDEX_BOKEH:I = 0x3

.field private static final INDEX_INFRARED:I = 0x5

.field private static final INDEX_MAIN:I = 0x0

.field private static final INDEX_MUX:I = 0x2

.field private static final INDEX_VIRTUAL:I = 0x4

.field private static final INVALID_CAMERA_ID:I = -0x1

.field private static final MAX_TYPES_OF_CAMERAS_OF_EACH_FACING_DIRECTION:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field private static final ULTRA_WIDE_BOKEH:I = 0x3f

.field private static final ULTRA_WIDE_ID:I = 0x15

.field private static final sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;


# instance fields
.field private volatile mCapabilities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/CameraCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCurrentOpenedCameraId:I

.field private volatile mOrderedCameraIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-direct {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;-><init>()V

    sput-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCurrentOpenedCameraId:I

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCapabilities:Landroid/util/SparseArray;

    .line 116
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    .line 145
    return-void
.end method

.method private dumpCameraIds()V
    .locals 6

    .line 226
    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 227
    new-array v2, v0, [I

    .line 229
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 230
    iget-object v4, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    aget v4, v4, v3

    aput v4, v1, v3

    .line 231
    iget-object v4, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    iget-object v5, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v2, v3

    .line 229
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :cond_0
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v3, "===================================================================="

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BACK: [main, aux, mux, bokeh, virtual, infrared] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FRONT: [main, aux, mux, bokeh, virtual, infrared] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "===================================================================="

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public static getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;
    .locals 4

    .line 126
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    monitor-enter v0

    .line 127
    :try_start_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-direct {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    .line 129
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 128
    invoke-direct {v1, v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->init(Landroid/hardware/camera2/CameraManager;)V

    .line 131
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    return-object v0

    .line 131
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/module/loader/camera2/Camera2DataContainer;
    .locals 2

    .line 136
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-direct {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-direct {v1, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->init(Landroid/hardware/camera2/CameraManager;)V

    .line 140
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    sget-object p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    return-object p0

    .line 140
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private init(Landroid/hardware/camera2/CameraManager;)V
    .locals 9

    .line 148
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "E: init()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->reset()V

    .line 151
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 153
    nop

    .line 155
    const/4 v1, 0x6

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 157
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    .line 158
    iget-object v2, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 159
    new-instance v2, Landroid/util/SparseArray;

    array-length v3, v0

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCapabilities:Landroid/util/SparseArray;

    .line 160
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v5, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    nop

    .line 169
    :try_start_2
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 171
    iget-object v7, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCapabilities:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/camera2/CameraCapabilities;

    invoke-direct {v8, v5, v6}, Lcom/android/camera2/CameraCapabilities;-><init>(Landroid/hardware/camera2/CameraCharacteristics;I)V

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mi/config/a;->isSupportUltraWide()Z

    move-result v7

    .line 174
    if-eqz v7, :cond_1

    .line 175
    const/16 v7, 0x15

    if-ne v7, v6, :cond_0

    .line 176
    goto :goto_1

    .line 178
    :cond_0
    const/16 v7, 0x3f

    if-ne v7, v6, :cond_1

    .line 179
    goto :goto_1

    .line 182
    :cond_1
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 183
    if-nez v5, :cond_2

    .line 184
    sget-object v5, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown facing direction of camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 185
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 186
    iget-object v5, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    add-int/lit8 v7, v1, 0x1

    aput v6, v5, v1

    .line 160
    move v1, v7

    goto :goto_1

    .line 187
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_4

    .line 188
    iget-object v5, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    add-int/lit8 v7, v4, 0x1

    aput v6, v5, v4

    .line 160
    move v4, v7

    goto :goto_1

    .line 164
    :catch_0
    move-exception v6

    .line 165
    sget-object v6, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "non-integer camera id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    nop

    .line 160
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 192
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->dumpCameraIds()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 205
    goto :goto_2

    .line 193
    :catch_1
    move-exception p1

    .line 203
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to init Camera2DataContainer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->reset()V

    .line 206
    :goto_2
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v0, "X: init()"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method private isInitialized()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCapabilities:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized getActualOpenCameraId(II)I
    .locals 7

    monitor-enter p0

    .line 376
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    sget-object p2, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v0, "Warning: getActualOpenCameraId(): #init() failed."

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return p1

    .line 380
    :cond_0
    nop

    .line 381
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez p1, :cond_d

    .line 382
    :try_start_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 385
    :cond_1
    move v3, v1

    goto :goto_0

    .line 383
    :cond_2
    nop

    .line 385
    move v3, v0

    :goto_0
    if-nez v3, :cond_3

    .line 386
    monitor-exit p0

    return p1

    .line 388
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    move-result-object v3

    .line 389
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 392
    :pswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    const-string v4, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 393
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideBokehCameraId()I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 394
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideBokehCameraId()I

    move-result v2

    goto/16 :goto_3

    .line 395
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 396
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v2

    goto/16 :goto_3

    .line 398
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMuxCameraId()I

    move-result v2

    .line 400
    goto/16 :goto_3

    .line 422
    :pswitch_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 423
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getCameraZoomMode(I)Ljava/lang/String;

    move-result-object v2

    .line 424
    const-string v3, "wide"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 425
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto :goto_1

    .line 426
    :cond_6
    const-string v3, "tele"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 427
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v2

    goto :goto_1

    .line 428
    :cond_7
    const-string v3, "ultra"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 429
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto :goto_1

    .line 431
    :cond_8
    move v2, p1

    :goto_1
    goto :goto_3

    .line 403
    :pswitch_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isRearMenuUltraPixelPhotographyOn()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 404
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    .line 405
    goto :goto_3

    .line 408
    :cond_9
    :pswitch_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraSatEnable()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/mi/config/b;->isSupportedOpticalZoom()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 409
    invoke-virtual {v3, p2}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->isUltraWideOnInMode(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 410
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto :goto_3

    .line 412
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMuxCameraId()I

    move-result v2

    goto :goto_3

    .line 414
    :cond_b
    invoke-virtual {v3, p2}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->isUltraWideOnInMode(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 415
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto :goto_3

    .line 437
    :pswitch_5
    invoke-virtual {v3, p2}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->isUltraWideOnInMode(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 438
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto :goto_3

    .line 444
    :cond_c
    :goto_2
    move v2, p1

    :goto_3
    goto :goto_5

    :cond_d
    if-ne p1, v1, :cond_f

    .line 445
    const/16 v3, 0xab

    if-eq p2, v3, :cond_e

    packed-switch p2, :pswitch_data_1

    goto :goto_4

    .line 453
    :pswitch_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v3

    .line 454
    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v3

    if-eq v3, v2, :cond_f

    .line 455
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v2

    goto :goto_5

    .line 447
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v3

    if-eq v3, v2, :cond_f

    .line 448
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v2

    goto :goto_5

    .line 460
    :cond_f
    :goto_4
    move v2, p1

    :goto_5
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "getActualOpenCameraId: mode=%x, id=%d->%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 461
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 p1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, p1

    .line 460
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    monitor-exit p0

    return v2

    .line 375
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa1
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public declared-synchronized getAuxCameraId()I
    .locals 2

    monitor-enter p0

    .line 251
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "Warning: getAuxCameraId(): #init() failed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 255
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAuxFrontCameraId()I
    .locals 2

    monitor-enter p0

    .line 304
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "Warning: getAuxFrontCameraId(): #init() failed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 308
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBokehCameraId()I
    .locals 2

    monitor-enter p0

    .line 267
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "Warning: getBokehCameraId(): #init() failed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 271
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    const/4 v1, 0x3

    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBokehFrontCameraId()I
    .locals 2

    monitor-enter p0

    .line 320
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "Warning: getBokehFrontCameraId(): #init() failed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 324
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCapabilities(I)Lcom/android/camera2/CameraCapabilities;
    .locals 4

    monitor-enter p0

    .line 352
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v0, "Warning: getCapabilities(): #init() failed."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 356
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/CameraCapabilities;

    .line 357
    if-nez v0, :cond_1

    .line 358
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: getCapabilities(): return null for camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    :cond_1
    monitor-exit p0

    return-object v0

    .line 351
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;
    .locals 0

    monitor-enter p0

    .line 372
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getActualOpenCameraId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 2

    monitor-enter p0

    .line 364
    :try_start_0
    iget v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCurrentOpenedCameraId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 365
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "Warning: getCurrentCameraCapabilities(): mCurrentOpenedCameraId is invalid."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    iget v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCurrentOpenedCameraId:I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFrontCameraId()I
    .locals 2

    monitor-enter p0

    .line 293
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "Warning: getFrontCameraId(): #init() failed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 297
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMainBackCameraId()I
    .locals 2

    monitor-enter p0

    .line 243
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "Warning: getMainBackCameraId(): #init() failed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 247
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    const/4 v1, 0x0

    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMuxCameraId()I
    .locals 2

    monitor-enter p0

    .line 259
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "Warning: getMuxCameraId(): #init() failed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 263
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    const/4 v1, 0x2

    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMuxFrontCameraId()I
    .locals 2

    monitor-enter p0

    .line 312
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "Warning: getMuxFrontCameraId(): #init() failed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 316
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUltraWideBokehCameraId()I
    .locals 2

    monitor-enter p0

    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "Warning: getUltraWideBokehCameraId(): #init() failed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 279
    :cond_0
    const/16 v0, 0x3f

    monitor-exit p0

    return v0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUltraWideCameraId()I
    .locals 2

    monitor-enter p0

    .line 466
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "Warning: getUltraWideCameraId(): #init() failed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 470
    :cond_0
    const/16 v0, 0x15

    monitor-exit p0

    return v0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasMuxCamera()Z
    .locals 3

    monitor-enter p0

    .line 283
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 284
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v2, "Warning: hasMuxCamera(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return v1

    .line 287
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    const/4 v2, 0x2

    aget v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    monitor-exit p0

    return v1

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFrontCameraId(I)Z
    .locals 2

    monitor-enter p0

    .line 328
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    .line 329
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 330
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "Warning: isFrontCameraId(): #init() failed."

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return v0

    .line 333
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    monitor-exit p0

    return v0

    .line 327
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 218
    :try_start_0
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "E: reset()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCurrentOpenedCameraId:I

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCapabilities:Landroid/util/SparseArray;

    .line 221
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mOrderedCameraIds:[I

    .line 222
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "X: reset()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCurrentOpenedCameraId(I)V
    .locals 0

    monitor-enter p0

    .line 214
    :try_start_0
    iput p1, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCurrentOpenedCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
