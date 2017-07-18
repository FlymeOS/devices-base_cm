.class Lcom/android/server/notification/RankingControllerImpl$1;
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
    .line 189
    iput-object p1, p0, Lcom/android/server/notification/RankingControllerImpl$1;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 191
    check-cast p1, Lmeizu/notification/RankingDaily;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lmeizu/notification/RankingDaily;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingControllerImpl$1;->compare(Lmeizu/notification/RankingDaily;Lmeizu/notification/RankingDaily;)I

    move-result v0

    return v0
.end method

.method public compare(Lmeizu/notification/RankingDaily;Lmeizu/notification/RankingDaily;)I
    .locals 2
    .param p1, "lhs"    # Lmeizu/notification/RankingDaily;
    .param p2, "rhs"    # Lmeizu/notification/RankingDaily;

    .prologue
    .line 193
    iget v0, p1, Lmeizu/notification/RankingDaily;->allNum:I

    iget v1, p2, Lmeizu/notification/RankingDaily;->allNum:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 194
    :cond_0
    iget v0, p1, Lmeizu/notification/RankingDaily;->allNum:I

    iget v1, p2, Lmeizu/notification/RankingDaily;->allNum:I

    if-le v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
