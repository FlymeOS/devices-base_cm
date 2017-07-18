.class Lcom/android/server/notification/NotificationFirewallImpl$1;
.super Ljava/lang/Object;
.source "NotificationFirewallImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationFirewallImpl;->initialize(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationFirewallImpl;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationFirewallImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationFirewallImpl;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl$1;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl$1;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {p2}, Lmeizu/notification/INotificationFilterService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/notification/INotificationFilterService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationFirewallImpl;->-set2(Lcom/android/server/notification/NotificationFirewallImpl;Lmeizu/notification/INotificationFilterService;)Lmeizu/notification/INotificationFilterService;

    .line 74
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl$1;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationFirewallImpl;->-set2(Lcom/android/server/notification/NotificationFirewallImpl;Lmeizu/notification/INotificationFilterService;)Lmeizu/notification/INotificationFilterService;

    .line 70
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl$1;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v0}, Lcom/android/server/notification/NotificationFirewallImpl;->-wrap0(Lcom/android/server/notification/NotificationFirewallImpl;)V

    .line 68
    return-void
.end method
