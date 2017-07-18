.class Lcom/android/server/notification/ConfigCloud$Record;
.super Ljava/lang/Object;
.source "ConfigCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ConfigCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Record"
.end annotation


# instance fields
.field covered:Z

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/ConfigCloud;

.field values:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ConfigCloud;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/notification/ConfigCloud;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/server/notification/ConfigCloud$Record;->this$0:Lcom/android/server/notification/ConfigCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConfigCloud$Record;->values:Landroid/util/ArrayMap;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ConfigCloud;Lcom/android/server/notification/ConfigCloud$Record;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ConfigCloud;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ConfigCloud$Record;-><init>(Lcom/android/server/notification/ConfigCloud;)V

    return-void
.end method
