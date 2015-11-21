.class final Lcom/android/server/am/ActivityManagerService$21;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/ActivityManagerService$MemItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ActivityManagerService$MemItem;Lcom/android/server/am/ActivityManagerService$MemItem;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/server/am/ActivityManagerService$MemItem;
    .param p2, "rhs"    # Lcom/android/server/am/ActivityManagerService$MemItem;

    .prologue
    .line 14247
    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    iget-wide v2, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 14248
    const/4 v0, 0x1

    .line 14252
    :goto_0
    return v0

    .line 14249
    :cond_0
    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    iget-wide v2, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 14250
    const/4 v0, -0x1

    goto :goto_0

    .line 14252
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14244
    check-cast p1, Lcom/android/server/am/ActivityManagerService$MemItem;

    check-cast p2, Lcom/android/server/am/ActivityManagerService$MemItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$21;->compare(Lcom/android/server/am/ActivityManagerService$MemItem;Lcom/android/server/am/ActivityManagerService$MemItem;)I

    move-result v0

    return v0
.end method
