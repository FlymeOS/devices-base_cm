.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
.super Ljava/lang/Object;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RttRequest"
.end annotation


# instance fields
.field ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

.field key:Ljava/lang/Integer;

.field params:[Landroid/net/wifi/RttManager$RttParams;

.field final synthetic this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Lcom/android/server/wifi/RttService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/RttService$RttServiceImpl;
    .param p2, "x1"    # Lcom/android/server/wifi/RttService$1;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    return-void
.end method
