brightnesscomparison<-function(x,y){
  compared<-0
  if(abs(x/y-1)>0.1){
    if(x>y){
      compared<-1
    }
    if(x<y){
      compared<-(-1)
    }
  }
  return(compared)
}

neighborcomparison<-function(mat,i,j){
  comparison<-NULL
  top_left<-0
  if(i>1 & j>1){
    top_left<-brightnesscomparison(mat[i-1,j-1],mat[i,j])
  }
  left<-0
  if(j>1){
    left<-brightnesscomparison(mat[i,j-1],mat[i,j])
  }
  bottom_left<-0
  if(j>1 & i<nrow(mat)){
    bottom_left<-brightnesscomparison(mat[i+1,j-1],mat[i,j])
  }
  top_right<-0
  if(i>1 & j<nrow(mat)){
    top_right<-brightnesscomparison(mat[i-1,j+1],mat[i,j])
  }
  right<-0
  if(j<ncol(mat)){
    right<-brightnesscomparison(mat[i,j+1],mat[i,j])
  }
  bottom_right<-0
  if(i<nrow(mat) & j<ncol(mat)){
    bottom_right<-brightnesscomparison(mat[i+1,j+1],mat[i,j])
  }
  top<-0
  if(i>1){
    top<-brightnesscomparison(mat[i-1,j],mat[i,j])
  }
  bottom<-0
  
  if(i<nrow(mat)){
    bottom<-brightnesscomparison(mat[i+1,j],mat[i,j])
  }
  comparison<-c(top_left,left,bottom_left,bottom,bottom_right,right,top_right,top)
  return(comparison)
}

get_signature<-function(matrix){
  signature<-NULL
  for (i in 1:nrow(matrix)){
    for (j in 1:ncol(matrix)){
      signature<-c(signature,neighborcomparison(matrix,i,j))
    }
  }
  return(signature)
}