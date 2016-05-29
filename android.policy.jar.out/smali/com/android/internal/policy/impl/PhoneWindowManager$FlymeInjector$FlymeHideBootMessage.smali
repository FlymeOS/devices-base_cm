.class final Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeHideBootMessage"
.end annotation


# instance fields
.field private mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p1, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 6769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6770
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 6771
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6775
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 6776
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 6777
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 6778
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    .line 6780
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgBar:Landroid/widget/ProgressBar;

    .line 6781
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgTitle:Landroid/widget/TextView;

    .line 6782
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgText:Landroid/widget/TextView;

    .line 6783
    return-void
.end method
