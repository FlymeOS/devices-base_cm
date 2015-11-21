.class final enum Lcom/android/server/ConnectivityService$NascentState;
.super Ljava/lang/Enum;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NascentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/ConnectivityService$NascentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ConnectivityService$NascentState;

.field public static final enum JUST_VALIDATED:Lcom/android/server/ConnectivityService$NascentState;

.field public static final enum NOT_JUST_VALIDATED:Lcom/android/server/ConnectivityService$NascentState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 256
    new-instance v0, Lcom/android/server/ConnectivityService$NascentState;

    const-string v1, "JUST_VALIDATED"

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$NascentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$NascentState;->JUST_VALIDATED:Lcom/android/server/ConnectivityService$NascentState;

    .line 258
    new-instance v0, Lcom/android/server/ConnectivityService$NascentState;

    const-string v1, "NOT_JUST_VALIDATED"

    invoke-direct {v0, v1, v3}, Lcom/android/server/ConnectivityService$NascentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$NascentState;->NOT_JUST_VALIDATED:Lcom/android/server/ConnectivityService$NascentState;

    .line 253
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/ConnectivityService$NascentState;

    sget-object v1, Lcom/android/server/ConnectivityService$NascentState;->JUST_VALIDATED:Lcom/android/server/ConnectivityService$NascentState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/ConnectivityService$NascentState;->NOT_JUST_VALIDATED:Lcom/android/server/ConnectivityService$NascentState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/ConnectivityService$NascentState;->$VALUES:[Lcom/android/server/ConnectivityService$NascentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ConnectivityService$NascentState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 253
    const-class v0, Lcom/android/server/ConnectivityService$NascentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NascentState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ConnectivityService$NascentState;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/android/server/ConnectivityService$NascentState;->$VALUES:[Lcom/android/server/ConnectivityService$NascentState;

    invoke-virtual {v0}, [Lcom/android/server/ConnectivityService$NascentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ConnectivityService$NascentState;

    return-object v0
.end method
