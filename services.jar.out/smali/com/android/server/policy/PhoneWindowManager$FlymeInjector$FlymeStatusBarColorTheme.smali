.class final Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeStatusBarColorTheme"
.end annotation


# instance fields
.field private mAnimation:Z

.field private mColor:I

.field private mPwm:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V
    .locals 0
    .param p1, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "color"    # I
    .param p3, "animation"    # Z

    .prologue
    .line 7468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7469
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    .line 7470
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;->mColor:I

    .line 7471
    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;->mAnimation:Z

    .line 7468
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7477
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getFlymeStatusBarService()Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v1

    .line 7478
    .local v1, "statusbar":Lmeizu/statusbar/IFlymeStatusBarService;
    if-eqz v1, :cond_0

    .line 7479
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;->mColor:I

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;->mAnimation:Z

    invoke-interface {v1, v2, v3}, Lmeizu/statusbar/IFlymeStatusBarService;->setStatusBarColorTheme(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7475
    .end local v1    # "statusbar":Lmeizu/statusbar/IFlymeStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 7481
    :catch_0
    move-exception v0

    .line 7483
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iput-object v4, v2, Lcom/android/server/policy/PhoneWindowManager;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    goto :goto_0
.end method
