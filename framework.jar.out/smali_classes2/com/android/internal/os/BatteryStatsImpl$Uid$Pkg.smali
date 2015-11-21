.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
.super Landroid/os/BatteryStats$Uid$Pkg;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Pkg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    }
.end annotation


# instance fields
.field mLastWakeups:I

.field mLoadedWakeups:I

.field final mServiceStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;",
            ">;"
        }
    .end annotation
.end field

.field mUnpluggedWakeups:I

.field mWakeups:I

.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V
    .locals 1

    .prologue
    .line 5832
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Pkg;-><init>()V

    .line 5830
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    .line 5833
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 5834
    return-void
.end method


# virtual methods
.method detach()V
    .locals 1

    .prologue
    .line 5844
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 5845
    return-void
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 6135
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getServiceStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg$Serv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5880
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWakeups(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5885
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    .line 5886
    .local v0, "val":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 5887
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mLoadedWakeups:I

    sub-int/2addr v0, v1

    .line 5892
    :cond_0
    :goto_0
    return v0

    .line 5888
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 5889
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mUnpluggedWakeups:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public incWakeupsLocked()V
    .locals 1

    .prologue
    .line 6139
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    .line 6140
    return-void
.end method

.method final newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 1

    .prologue
    .line 6143
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;)V

    return-object v0
.end method

.method public onTimeStarted(JJJ)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 5837
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mUnpluggedWakeups:I

    .line 5838
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 5841
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 5848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    .line 5849
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mLoadedWakeups:I

    .line 5850
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mLastWakeups:I

    .line 5851
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mUnpluggedWakeups:I

    .line 5853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5854
    .local v1, "numServs":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 5855
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5856
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5857
    .local v3, "serviceName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-direct {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;)V

    .line 5858
    .local v2, "serv":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5860
    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 5855
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5862
    .end local v2    # "serv":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v3    # "serviceName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 5865
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5866
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mLoadedWakeups:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5867
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mUnpluggedWakeups:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5869
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5870
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5871
    .local v2, "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5872
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 5874
    .local v1, "serv":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->writeToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_0

    .line 5876
    .end local v1    # "serv":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v2    # "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    :cond_0
    return-void
.end method
