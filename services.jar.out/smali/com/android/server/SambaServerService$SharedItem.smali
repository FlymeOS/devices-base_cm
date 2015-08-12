.class Lcom/android/server/SambaServerService$SharedItem;
.super Ljava/lang/Object;
.source "SambaServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SambaServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedItem"
.end annotation


# instance fields
.field desc:Ljava/lang/String;

.field path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/SambaServerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SambaServerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "p"    # Ljava/lang/String;
    .param p3, "d"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/SambaServerService$SharedItem;->this$0:Lcom/android/server/SambaServerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/android/server/SambaServerService$SharedItem;->path:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/android/server/SambaServerService$SharedItem;->desc:Ljava/lang/String;

    .line 68
    return-void
.end method
