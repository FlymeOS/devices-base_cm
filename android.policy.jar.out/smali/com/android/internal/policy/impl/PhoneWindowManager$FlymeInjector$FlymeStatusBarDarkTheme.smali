.class final Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;
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
    name = "FlymeStatusBarDarkTheme"
.end annotation


# instance fields
.field private mAnimation:Z

.field private mDark:Z

.field private mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)V
    .locals 0
    .param p1, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "dark"    # Z
    .param p3, "animation"    # Z

    .prologue
    .line 6792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6793
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 6794
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;->mDark:Z

    .line 6795
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;->mAnimation:Z

    .line 6796
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6801
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getFlymeStatusBarService()Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v1

    .line 6802
    .local v1, "statusbar":Lmeizu/statusbar/IFlymeStatusBarService;
    if-eqz v1, :cond_0

    .line 6803
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;->mDark:Z

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;->mAnimation:Z

    invoke-interface {v1, v2, v3}, Lmeizu/statusbar/IFlymeStatusBarService;->setStatusBarDarkTheme(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6809
    .end local v1    # "statusbar":Lmeizu/statusbar/IFlymeStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 6805
    :catch_0
    move-exception v0

    .line 6807
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    goto :goto_0
.end method
