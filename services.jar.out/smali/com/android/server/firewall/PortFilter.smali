.class Lcom/android/server/firewall/PortFilter;
.super Ljava/lang/Object;
.source "PortFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/PortFilter$1;
    }
.end annotation


# static fields
.field private static final ATTR_EQUALS:Ljava/lang/String; = "equals"

.field private static final ATTR_MAX:Ljava/lang/String; = "max"

.field private static final ATTR_MIN:Ljava/lang/String; = "min"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;

.field private static final NO_BOUND:I = -0x1


# instance fields
.field private final mLowerBound:I

.field private final mUpperBound:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/android/server/firewall/PortFilter$1;

    const-string/jumbo v1, "port"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/PortFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    .line 27
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    .line 40
    iput p2, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    .line 38
    return-void
.end method

.method synthetic constructor <init>(IILcom/android/server/firewall/PortFilter;)V
    .locals 0
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/firewall/PortFilter;-><init>(II)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 6
    .param p1, "ifw"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callerUid"    # I
    .param p5, "callerPid"    # I
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "receivingUid"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 46
    const/4 v0, -0x1

    .line 47
    .local v0, "port":I
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 48
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v0

    .line 51
    :cond_0
    if-eq v0, v5, :cond_4

    .line 52
    iget v4, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    if-gt v4, v0, :cond_4

    .line 53
    :cond_1
    iget v4, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    if-lt v4, v0, :cond_3

    .line 51
    :cond_2
    :goto_0
    return v2

    :cond_3
    move v2, v3

    .line 53
    goto :goto_0

    :cond_4
    move v2, v3

    .line 51
    goto :goto_0
.end method
