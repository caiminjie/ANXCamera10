.class Lcom/android/zxing/HandGestureDecoder$3;
.super Ljava/lang/Object;
.source "HandGestureDecoder.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/zxing/HandGestureDecoder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/android/zxing/PreviewImage;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/HandGestureDecoder;


# direct methods
.method constructor <init>(Lcom/android/zxing/HandGestureDecoder;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/zxing/HandGestureDecoder$3;->this$0:Lcom/android/zxing/HandGestureDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/zxing/PreviewImage;)Ljava/lang/Integer;
    .locals 1

    .line 63
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getPreviewStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    iget-object p1, p0, Lcom/android/zxing/HandGestureDecoder$3;->this$0:Lcom/android/zxing/HandGestureDecoder;

    invoke-static {p1}, Lcom/android/zxing/HandGestureDecoder;->access$500(Lcom/android/zxing/HandGestureDecoder;)Lcom/android/camera/handgesture/HandGesture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/handgesture/HandGesture;->unInit()V

    .line 74
    goto :goto_0

    .line 68
    :pswitch_1
    invoke-static {}, Lcom/android/zxing/HandGestureDecoder;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/zxing/HandGestureDecoder$3;->this$0:Lcom/android/zxing/HandGestureDecoder;

    invoke-static {v0, p1}, Lcom/android/zxing/HandGestureDecoder;->access$700(Lcom/android/zxing/HandGestureDecoder;Lcom/android/zxing/PreviewImage;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/HandGestureDecoder$3;->this$0:Lcom/android/zxing/HandGestureDecoder;

    invoke-virtual {v0, p1}, Lcom/android/zxing/HandGestureDecoder;->decode(Lcom/android/zxing/PreviewImage;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/android/zxing/HandGestureDecoder$3;->this$0:Lcom/android/zxing/HandGestureDecoder;

    invoke-static {v0}, Lcom/android/zxing/HandGestureDecoder;->access$500(Lcom/android/zxing/HandGestureDecoder;)Lcom/android/camera/handgesture/HandGesture;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getCameraId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/handgesture/HandGesture;->init(I)V

    .line 66
    nop

    .line 79
    :goto_0
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    check-cast p1, Lcom/android/zxing/PreviewImage;

    invoke-virtual {p0, p1}, Lcom/android/zxing/HandGestureDecoder$3;->apply(Lcom/android/zxing/PreviewImage;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
