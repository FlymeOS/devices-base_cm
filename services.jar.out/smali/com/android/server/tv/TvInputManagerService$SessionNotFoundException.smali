.class Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;
.super Ljava/lang/IllegalArgumentException;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionNotFoundException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2349
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 2350
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2353
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2354
    return-void
.end method
