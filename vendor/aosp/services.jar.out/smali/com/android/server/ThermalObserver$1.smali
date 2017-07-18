.class Lcom/android/server/ThermalObserver$1;
.super Landroid/os/UEventObserver;
.source "ThermalObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermalObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermalObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ThermalObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ThermalObserver;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/ThermalObserver$1;->this$0:Lcom/android/server/ThermalObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/ThermalObserver$1;->this$0:Lcom/android/server/ThermalObserver;

    const-string/jumbo v1, "SWITCH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ThermalObserver;->-wrap1(Lcom/android/server/ThermalObserver;I)V

    .line 55
    return-void
.end method
