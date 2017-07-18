.class Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;
.super Ljava/lang/Object;
.source "ProfileManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ProfileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {p2}, Lcom/android/internal/policy/IKeyguardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-set1(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;

    .line 117
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 125
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-set1(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;

    .line 127
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get6(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get1(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get6(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get1(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void
.end method
