.class final Lcom/android/server/DropBoxManagerService$FileList;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/DropBoxManagerService$FileList;",
        ">;"
    }
.end annotation


# instance fields
.field public blocks:I

.field public final contents:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/server/DropBoxManagerService$EntryFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 454
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 452
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DropBoxManagerService$FileList;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService$FileList;-><init>()V

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/android/server/DropBoxManagerService$FileList;)I
    .locals 3
    .param p1, "o"    # Lcom/android/server/DropBoxManagerService$FileList;

    .prologue
    const/4 v2, 0x0

    .line 458
    iget v0, p0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v1, p1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v1, p0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v0, v1

    return v0

    .line 459
    :cond_0
    if-ne p0, p1, :cond_1

    return v2

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$FileList;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$FileList;->hashCode()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, -0x1

    return v0

    .line 461
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$FileList;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$FileList;->hashCode()I

    move-result v1

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    return v0

    .line 462
    :cond_3
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 457
    check-cast p1, Lcom/android/server/DropBoxManagerService$FileList;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$FileList;->compareTo(Lcom/android/server/DropBoxManagerService$FileList;)I

    move-result v0

    return v0
.end method
