.class Lcom/android/server/ThemeService$3;
.super Ljava/lang/Object;
.source "ThemeService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThemeService;
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
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThemeService;


# direct methods
.method constructor <init>(Lcom/android/server/ThemeService;)V
    .locals 0

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/android/server/ThemeService$3;->this$0:Lcom/android/server/ThemeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .param p1, "lhs"    # Ljava/io/File;
    .param p2, "rhs"    # Ljava/io/File;

    .prologue
    .line 1187
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1184
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ThemeService$3;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
