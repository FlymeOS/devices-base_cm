.class Lcom/android/server/shrinker/NormalScanner;
.super Lcom/android/server/shrinker/Scanner;
.source "NormalScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/shrinker/NormalScanner$Comparator;
    }
.end annotation


# static fields
.field private static final DISALLOW_REASON:Ljava/lang/String; = "by shrinker for disallow running"

.field private static final INACTIVE_REASON:Ljava/lang/String; = "by shrinker for inactive 24 hours"

.field private static final LABEL_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIZE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIZE_REASON:Ljava/lang/String; = "by shrinker for size limited"


# instance fields
.field private mComparator:Lcom/android/server/shrinker/NormalScanner$Comparator;

.field private mKillingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/shrinker/NormalScanner;->SIZE_MAP:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/shrinker/NormalScanner;->LABEL_MAP:Ljava/util/HashMap;

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/shrinker/RootScanner;)V
    .locals 6
    .param p1, "scanner"    # Lcom/android/server/shrinker/RootScanner;

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xa

    const/4 v3, 0x5

    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/shrinker/Scanner;-><init>(Lcom/android/server/shrinker/RootScanner;)V

    .line 16
    new-instance v0, Lcom/android/server/shrinker/NormalScanner$Comparator;

    invoke-direct {v0}, Lcom/android/server/shrinker/NormalScanner$Comparator;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/NormalScanner;->mComparator:Lcom/android/server/shrinker/NormalScanner$Comparator;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/shrinker/NormalScanner;->mKillingList:Ljava/util/ArrayList;

    .line 21
    sget-object v0, Lcom/android/server/shrinker/NormalScanner;->SIZE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "Perceptible"

    const-string/jumbo v2, "persist.sys.shrink_perceptible"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/android/server/shrinker/NormalScanner;->LABEL_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "Perceptible"

    const-string/jumbo v2, "trimSize Perceptible :"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/android/server/shrinker/NormalScanner;->SIZE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "Services"

    const-string/jumbo v2, "persist.sys.shrink_service"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/android/server/shrinker/NormalScanner;->LABEL_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "Services"

    const-string/jumbo v2, "trimSize Services :"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/android/server/shrinker/NormalScanner;->SIZE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "Cached"

    const-string/jumbo v2, "persist.sys.shrink_cached"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/android/server/shrinker/NormalScanner;->LABEL_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "Cached"

    const-string/jumbo v2, "trimSize Cached :"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method private trimInactive(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;"
    const/4 v4, 0x1

    .line 44
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/PackageRecordExt;

    .line 45
    .local v0, "r":Lcom/android/server/shrinker/PackageRecordExt;
    iget-boolean v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->skip:Z

    if-nez v2, :cond_0

    .line 46
    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->oomAdj:I

    if-lez v2, :cond_0

    .line 47
    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->flags:I

    invoke-static {v2}, Lcom/android/server/shrinker/PackageStateInfo;->isIgnore(I)Z

    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 48
    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->oomPriority:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    .line 49
    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->duration:I

    const/16 v3, 0x258

    if-le v2, v3, :cond_0

    .line 52
    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->flags:I

    invoke-static {v2}, Lcom/android/server/shrinker/PackageStateInfo;->isDisallow(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    const-string/jumbo v2, "by shrinker for disallow running"

    iput-object v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->killReason:Ljava/lang/String;

    .line 54
    iput-boolean v4, v0, Lcom/android/server/shrinker/PackageRecordExt;->skip:Z

    .line 55
    iget-object v2, p0, Lcom/android/server/shrinker/NormalScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_1
    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->duration:I

    const v3, 0x15180

    if-le v2, v3, :cond_0

    .line 57
    iput-boolean v4, v0, Lcom/android/server/shrinker/PackageRecordExt;->skip:Z

    .line 58
    const-string/jumbo v2, "by shrinker for inactive 24 hours"

    iput-object v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->killReason:Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/android/server/shrinker/NormalScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v0    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_2
    iget-object v2, p0, Lcom/android/server/shrinker/NormalScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 64
    iget-object v2, p0, Lcom/android/server/shrinker/NormalScanner;->mScanner:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v2}, Lcom/android/server/shrinker/RootScanner;->getLogsWriter()Lcom/android/server/shrinker/LogsWriter;

    move-result-object v2

    const-string/jumbo v3, "trimInactive :"

    invoke-virtual {v2, v3}, Lcom/android/server/shrinker/LogsWriter;->append(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/android/server/shrinker/NormalScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/PackageRecordExt;

    .line 66
    .restart local v0    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    invoke-virtual {v0}, Lcom/android/server/shrinker/PackageRecordExt;->kill()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    iget-object v2, p0, Lcom/android/server/shrinker/NormalScanner;->mScanner:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v2}, Lcom/android/server/shrinker/RootScanner;->getLogsWriter()Lcom/android/server/shrinker/LogsWriter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/shrinker/PackageRecordExt;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/shrinker/LogsWriter;->append(Ljava/lang/String;Z)V

    goto :goto_1

    .line 70
    .end local v0    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_4
    iget-object v2, p0, Lcom/android/server/shrinker/NormalScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 43
    :cond_5
    return-void
.end method

.method private trimSize(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;>;"
    const/4 v8, 0x1

    .line 75
    sget-object v6, Lcom/android/server/shrinker/NormalScanner;->SIZE_MAP:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 76
    .local v2, "maxSize":I
    if-nez v2, :cond_0

    .line 77
    return-void

    .line 80
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 81
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v2, :cond_2

    .line 82
    :cond_1
    return-void

    .line 85
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "r$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/shrinker/PackageRecordExt;

    .line 86
    .local v3, "r":Lcom/android/server/shrinker/PackageRecordExt;
    iget v6, v3, Lcom/android/server/shrinker/PackageRecordExt;->oomAdj:I

    if-lez v6, :cond_4

    .line 87
    iget v6, v3, Lcom/android/server/shrinker/PackageRecordExt;->flags:I

    invoke-static {v6}, Lcom/android/server/shrinker/PackageStateInfo;->isIgnore(I)Z

    move-result v6

    .line 86
    if-eqz v6, :cond_5

    .line 88
    :cond_4
    iput-boolean v8, v3, Lcom/android/server/shrinker/PackageRecordExt;->skip:Z

    goto :goto_0

    .line 91
    :cond_5
    iget v6, v3, Lcom/android/server/shrinker/PackageRecordExt;->oomPriority:I

    const/16 v7, 0x8

    if-ge v6, v7, :cond_3

    .line 92
    const-string/jumbo v6, "by shrinker for size limited"

    iput-object v6, v3, Lcom/android/server/shrinker/PackageRecordExt;->killReason:Ljava/lang/String;

    .line 93
    iput-boolean v8, v3, Lcom/android/server/shrinker/PackageRecordExt;->skip:Z

    .line 94
    iget-object v6, p0, Lcom/android/server/shrinker/NormalScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    .end local v3    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_6
    iget-object v6, p0, Lcom/android/server/shrinker/NormalScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 99
    .local v5, "size":I
    if-le v5, v2, :cond_8

    .line 100
    iget-object v6, p0, Lcom/android/server/shrinker/NormalScanner;->mKillingList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/shrinker/NormalScanner;->mComparator:Lcom/android/server/shrinker/NormalScanner$Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    iget-object v6, p0, Lcom/android/server/shrinker/NormalScanner;->mScanner:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v6}, Lcom/android/server/shrinker/RootScanner;->getLogsWriter()Lcom/android/server/shrinker/LogsWriter;

    move-result-object v7

    sget-object v6, Lcom/android/server/shrinker/NormalScanner;->LABEL_MAP:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/android/server/shrinker/LogsWriter;->append(Ljava/lang/String;)V

    .line 102
    const/4 v3, 0x0

    .line 103
    .local v3, "r":Lcom/android/server/shrinker/PackageRecordExt;
    add-int/lit8 v0, v5, -0x1

    .end local v3    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_8

    .line 104
    iget-object v6, p0, Lcom/android/server/shrinker/NormalScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/shrinker/PackageRecordExt;

    .line 105
    .local v3, "r":Lcom/android/server/shrinker/PackageRecordExt;
    invoke-virtual {v3}, Lcom/android/server/shrinker/PackageRecordExt;->kill()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 106
    iget-object v6, p0, Lcom/android/server/shrinker/NormalScanner;->mScanner:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v6}, Lcom/android/server/shrinker/RootScanner;->getLogsWriter()Lcom/android/server/shrinker/LogsWriter;

    move-result-object v6

    invoke-virtual {v3, v8}, Lcom/android/server/shrinker/PackageRecordExt;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/android/server/shrinker/LogsWriter;->append(Ljava/lang/String;Z)V

    .line 103
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 110
    .end local v0    # "i":I
    .end local v3    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_8
    iget-object v6, p0, Lcom/android/server/shrinker/NormalScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 74
    return-void
.end method


# virtual methods
.method public scan()V
    .locals 3

    .prologue
    .line 33
    iget-object v2, p0, Lcom/android/server/shrinker/NormalScanner;->mScanner:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v2}, Lcom/android/server/shrinker/RootScanner;->isStatusChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/android/server/shrinker/NormalScanner;->mScanner:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v2}, Lcom/android/server/shrinker/RootScanner;->getRunningAppList()Ljava/util/ArrayList;

    move-result-object v1

    .line 35
    .local v1, "runningAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;"
    invoke-static {v1}, Lcom/android/server/shrinker/Utils;->classify(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    .line 36
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;>;"
    const-string/jumbo v2, "Cached"

    invoke-direct {p0, v2, v0}, Lcom/android/server/shrinker/NormalScanner;->trimSize(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 37
    const-string/jumbo v2, "Services"

    invoke-direct {p0, v2, v0}, Lcom/android/server/shrinker/NormalScanner;->trimSize(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 38
    const-string/jumbo v2, "Perceptible"

    invoke-direct {p0, v2, v0}, Lcom/android/server/shrinker/NormalScanner;->trimSize(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 39
    invoke-direct {p0, v1}, Lcom/android/server/shrinker/NormalScanner;->trimInactive(Ljava/util/ArrayList;)V

    .line 32
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;>;"
    .end local v1    # "runningAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;"
    :cond_0
    return-void
.end method
