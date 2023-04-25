FROM glebkrasilich/agda:latest AS agdaBuild
WORKDIR /src
COPY . /src
RUN agda --latex MasterThesis.lagda.tex

FROM texlive/texlive:latest AS texBuild
WORKDIR /tex
COPY --from=agdaBuild /src/latex /tex
RUN pdflatex MasterThesis.tex

FROM nginx:stable
COPY --from=texBuild /tex /usr/share/nginx/html