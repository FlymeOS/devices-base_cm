.class Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;
.super Ljava/lang/Object;
.source "CMStatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyPostedLocked(Lcyanogenmod/app/StatusBarPanelCustomTile;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

.field final synthetic val$info:Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

.field final synthetic val$sbcToPost:Lcyanogenmod/app/StatusBarPanelCustomTile;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "this$1"    # Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;
    .param p2, "val$info"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p3, "val$sbcToPost"    # Lcyanogenmod/app/StatusBarPanelCustomTile;

    .prologue
    .line 618
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;->this$1:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    iput-object p2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;->val$info:Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;->val$sbcToPost:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;->this$1:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;->val$info:Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;->val$sbcToPost:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->-wrap0(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    .line 620
    return-void
.end method
