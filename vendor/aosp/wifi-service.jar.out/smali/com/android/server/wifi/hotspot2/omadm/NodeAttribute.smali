.class public Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;
.super Ljava/lang/Object;
.source "NodeAttribute.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mName:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mType:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mValue:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    const-string/jumbo v0, "%s (%s) = \'%s\'"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mType:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mValue:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
