.class Lcom/android/camera/fragment/beauty/LiveBeautyModeFragment$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "LiveBeautyModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/LiveBeautyModeFragment;->onHeaderClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/LiveBeautyModeFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/LiveBeautyModeFragment;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/LiveBeautyModeFragment$1;->this$0:Lcom/android/camera/fragment/beauty/LiveBeautyModeFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;->onAnimationEnd(Landroid/view/View;)V

    .line 64
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/LiveBeautyModeFragment$1;->this$0:Lcom/android/camera/fragment/beauty/LiveBeautyModeFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/beauty/LiveBeautyModeFragment;->access$000(Lcom/android/camera/fragment/beauty/LiveBeautyModeFragment;)Lcom/android/camera/ui/ColorImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ColorImageView;->setRotation(F)V

    .line 65
    return-void
.end method
