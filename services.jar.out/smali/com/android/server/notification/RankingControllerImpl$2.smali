.class Lcom/android/server/notification/RankingControllerImpl$2;
.super Ljava/lang/Object;
.source "RankingControllerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/RankingControllerImpl;->computingDailyResult(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lmeizu/notification/RankingDaily;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/RankingControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/notification/RankingControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/RankingControllerImpl;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/server/notification/RankingControllerImpl$2;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 202
    check-cast p1, Lmeizu/notification/RankingDaily;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lmeizu/notification/RankingDaily;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingControllerImpl$2;->compare(Lmeizu/notification/RankingDaily;Lmeizu/notification/RankingDaily;)I

    move-result v0

    return v0
.end method

.method public compare(Lmeizu/notification/RankingDaily;Lmeizu/notification/RankingDaily;)I
    .locals 5
    .param p1, "lhs"    # Lmeizu/notification/RankingDaily;
    .param p2, "rhs"    # Lmeizu/notification/RankingDaily;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 204
    iget v2, p1, Lmeizu/notification/RankingDaily;->clickNum:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, p1, Lmeizu/notification/RankingDaily;->allNum:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 205
    .local v0, "a":F
    iget v2, p2, Lmeizu/notification/RankingDaily;->clickNum:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, p2, Lmeizu/notification/RankingDaily;->allNum:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 206
    .local v1, "b":F
    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
