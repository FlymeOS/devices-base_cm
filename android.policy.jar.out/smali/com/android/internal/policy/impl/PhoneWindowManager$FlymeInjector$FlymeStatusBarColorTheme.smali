.class final Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;
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
    name = "FlymeStatusBarColorTheme"
.end annotation


# instance fields
.field private mAnimation:Z

.field private mColor:I

.field private mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V
    .locals 0
    .param p1, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "color"    # I
    .param p3, "animation"    # Z

    .prologue
    .line 6817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6818
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 6819
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;->mColor:I

    .line 6820
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;->mAnimation:Z

    .line 6821
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6826
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getFlymeStatusBarService()Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v1

    .line 6827
    .local v1, "statusbar":Lmeizu/statusbar/IFlymeStatusBarService;
    if-eqz v1, :cond_0

    .line 6828
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;->mColor:I

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;->mAnimation:Z

    invoke-interface {v1, v2, v3}, Lmeizu/statusbar/IFlymeStatusBarService;->setStatusBarColorTheme(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6834
    .end local v1    # "statusbar":Lmeizu/statusbar/IFlymeStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 6830
    :catch_0
    move-exception v0

    .line 6832
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    goto :goto_0
.end method
