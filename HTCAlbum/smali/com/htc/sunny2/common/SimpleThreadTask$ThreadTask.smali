.class final Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;
.super Ljava/lang/Object;
.source "SimpleThreadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/SimpleThreadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadTask"
.end annotation


# instance fields
.field private mId:I

.field private mParam:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TParams;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResult;"
        }
    .end annotation
.end field

.field private mStatus:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

.field final synthetic this$0:Lcom/htc/sunny2/common/SimpleThreadTask;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/common/SimpleThreadTask;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITParams;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->this$0:Lcom/htc/sunny2/common/SimpleThreadTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mId:I

    sget-object v0, Lcom/htc/sunny2/common/SimpleThreadTask$Status;->PENDING:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mStatus:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    iput p2, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mId:I

    iput-object p3, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mParam:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mId:I

    return v0
.end method

.method public getParams()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TParams;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/htc/sunny2/common/SimpleThreadTask$Status;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mStatus:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    return-object v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mResult:Ljava/lang/Object;

    return-void
.end method
