.class Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field final synthetic val$hints:I

.field final synthetic val$serviceInfo:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p2, "val$serviceInfo"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "val$hints"    # I

    .prologue
    .line 3987
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;->val$serviceInfo:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;->val$hints:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3990
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;->val$serviceInfo:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;->val$hints:I

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->-wrap2(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 3989
    return-void
.end method
